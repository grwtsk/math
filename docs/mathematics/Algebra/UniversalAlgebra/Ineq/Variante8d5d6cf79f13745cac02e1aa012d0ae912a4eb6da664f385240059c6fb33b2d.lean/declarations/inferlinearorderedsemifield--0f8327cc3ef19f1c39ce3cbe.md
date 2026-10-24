# inferLinearOrderedSemifield

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01749f6c0231fa92b0897a7a7cc3b45a7603221d2230bf22aa37a8f71e0dd61f",
  "kind": "def",
  "lexical_name": "inferLinearOrderedSemifield",
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
  "slug": "inferlinearorderedsemifield--0f8327cc3ef19f1c39ce3cbe",
  "source": {
    "blob": "64dfaf471d8c1178946c92984ad08874e6398a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ineq/Variante8d5d6cf79f13745cac02e1aa012d0ae912a4eb6da664f385240059c6fb33b2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f8327cc3ef19f1c39ce3cbe48da7f94619508ff62f3c49d5b91d6790b39029f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ineq/Variante8d5d6cf79f13745cac02e1aa012d0ae912a4eb6da664f385240059c6fb33b2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01749f6c0231fa92b0897a7a7cc3b45a7603221d2230bf22aa37a8f71e0dd61f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inferLinearOrderedSemifield (α : Q(Type u)) : MetaM <|
    (_ : Q(Semifield $α)) × (_ : Q(LinearOrder $α)) × Q(IsStrictOrderedRing $α) :=
  let go := do
    let semifield ← synthInstanceQ q(Semifield $α)
    let linearOrder ← synthInstanceQ q(LinearOrder $α)
    let isStrictOrderedRing ← synthInstanceQ q(IsStrictOrderedRing $α)
    return ⟨semifield, linearOrder, isStrictOrderedRing⟩
  go <|> throwError "not a linear ordered semifield"

/-- Helper function to synthesize typed `Field α` `LinearOrder α` `IsStrictOrderedRing α`
expressions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ineq/Variante8d5d6cf79f13745cac02e1aa012d0ae912a4eb6da664f385240059c6fb33b2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ineq/Variante8d5d6cf79f13745cac02e1aa012d0ae912a4eb6da664f385240059c6fb33b2d.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dfaf471d8c1178946c92984ad08874e6398a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
