# parseContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dee2e089d1d571f3be3f834ff0e491d90cd733ce43f16f24f18f2c330dbf8e48",
  "kind": "def",
  "lexical_name": "parseContext",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "parsecontext--82f34719d69d89a82dc79ad8",
  "source": {
    "blob": "4ee028d7c404ac0cd8d4fea00009416f745159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82f34719d69d89a82dc79ad822b660104234bdb88269dac8c59a86e2198e2f30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dee2e089d1d571f3be3f834ff0e491d90cd733ce43f16f24f18f2c330dbf8e48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseContext (only : Bool) (hyps : Array Expr) (tgt : Expr) :
    AtomM (Expr × Array (Source × Poly) × Poly) := do
  let fail {α} : AtomM α := throwError "polyrith failed: target is not an equality in semirings"
  let some (α, e₁, e₂) := (← whnfR <|← instantiateMVars tgt).eq? | fail
  let .sort u ← instantiateMVars (← whnf (← inferType α)) | unreachable!
  let some v := u.dec | throwError "not a type{indentExpr α}"
  have α : Q(Type v) := α
  have e₁ : Q($α) := e₁; have e₂ : Q($α) := e₂
  let sα ← synthInstanceQ (q(CommSemiring $α) : Q(Type v))
  let c ← mkCache sα
  let tgt := (← parse sα c e₁).sub (← parse sα c e₂)
  let rec
    /-- Parses a hypothesis and adds it to the `out` list. -/
    processHyp src ty out := do
      if let some (β, e₁, e₂) := (← instantiateMVars ty).eq? then
        if ← withTransparency (← read).red <| isDefEq α β then
          return out.push (src, (← parse sα c e₁).sub (← parse sα c e₂))
      pure out
  let mut out := #[]
  if !only then
    for ldecl in ← getLCtx do
      out ← processHyp (.fvar ldecl.fvarId) ldecl.type out
  for hyp in hyps, i in [:hyps.size] do
    out ← processHyp (.input i) (← inferType hyp) out
  pure (α, out, tgt)

/-- Constructs the list of arguments to pass to the external sage script `polyrith_sage.py`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ee028d7c404ac0cd8d4fea00009416f745159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
