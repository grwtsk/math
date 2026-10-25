# evalExpr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ae363541c33f137ad8a98a6f3109e70ed0d940dfc0dcaf040c53f11c49d8b25",
  "kind": "def",
  "lexical_name": "evalExpr?",
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
  "slug": "evalexpr--cd80a19d7f88c67f4faa75d5",
  "source": {
    "blob": "6dae1982d2bbc396172c691639997b712c9897ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantc34a2f08fb11deb08cb3cc1946751a15fa1e98a57329d58f75aac972592df061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd80a19d7f88c67f4faa75d556c9f9ac862f6902c8d0c9eaa9877e1f484fe6e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantc34a2f08fb11deb08cb3cc1946751a15fa1e98a57329d58f75aac972592df061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ae363541c33f137ad8a98a6f3109e70ed0d940dfc0dcaf040c53f11c49d8b25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalExpr? (e : Expr) : AtomM (Option Simp.Result) := do
  let e ← withReducible <| whnf e
  unless e.isApp do return none -- all interesting ring expressions are applications
  let ⟨u, α, e⟩ ← inferTypeQ' e
  let .some sαe ← trySynthInstance q(CommSemiring $α) | return none
  have sα : Q(CommSemiring $α) := sαe
  let c ← Common.mkCache sα
  let ⟨a, _, pa⟩ ← match
    (← Common.isAtomOrDerivable (ringCompute c) c q($e)) with
  | none => Common.eval rcℕ (ringCompute c) c e
    -- `none` indicates that `eval` will find something algebraic.
  | some none => return none -- No point rewriting atoms
  | some (some r) => pure r -- Nothing algebraic for `eval` to use, but `norm_num` simplifies.
  return some { expr := a, proof? := pa }

/--
Evaluates an expression `e` into a normalized representation as a polynomial.

This is a variant of `Mathlib.Tactic.Ring.eval`, the main driver of the `ring` tactic.
It differs in
* operating on `Expr` (input) and `Simp.Result` (output), rather than typed `Qq` versions of these;
* throwing an error if the expression `e` is an atom for the `ring` tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantc34a2f08fb11deb08cb3cc1946751a15fa1e98a57329d58f75aac972592df061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantc34a2f08fb11deb08cb3cc1946751a15fa1e98a57329d58f75aac972592df061.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dae1982d2bbc396172c691639997b712c9897ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
