# Exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0049758eebad5c9dc2d168d4f9b6e5253351d461217e207de7af1f3a53858702",
  "kind": "def",
  "lexical_name": "Exists",
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
  "slug": "exists--ada4341f6472dceba4f4cbed",
  "source": {
    "blob": "52715a66bf107801e0eea77237313a74930f6b3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ada4341f6472dceba4f4cbed954fc56a9745736896e83515f2c8fdd43c6b477a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0049758eebad5c9dc2d168d4f9b6e5253351d461217e207de7af1f3a53858702`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Exists : ∀ {m n} (_ : Matrix (Fin m) (Fin n) α → Prop), Prop
  | 0, _, P => P (of ![])
  | _ + 1, _, P => FinVec.Exists fun r => Exists fun A => P (of (Matrix.vecCons r A))
#align matrix.exists Matrix.Exists

/-- This can be use to prove
```lean
example (P : Matrix (Fin 2) (Fin 3) α → Prop) :
  (∃ x, P x) ↔ ∃ a b c d e f, P !![a, b, c; d, e, f] :=
(exists_iff _).symm
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52715a66bf107801e0eea77237313a74930f6b3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
