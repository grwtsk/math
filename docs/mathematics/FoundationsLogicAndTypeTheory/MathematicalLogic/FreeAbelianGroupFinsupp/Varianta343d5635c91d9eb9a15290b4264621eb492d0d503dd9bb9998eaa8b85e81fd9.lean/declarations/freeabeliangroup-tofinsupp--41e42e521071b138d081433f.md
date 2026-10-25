# FreeAbelianGroup.toFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e5f298fe5a3bb4b10bf9d2484b7efdba47c44f399f87bc058c55f0ef82efa0a",
  "kind": "def",
  "lexical_name": "FreeAbelianGroup.toFinsupp",
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
  "slug": "freeabeliangroup-tofinsupp--41e42e521071b138d081433f",
  "source": {
    "blob": "578aab823e486601438bc713fdf5d3ab67fd8099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41e42e521071b138d081433f76ae0b178fe4c8b72a75db8077522eb5f337b781",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e5f298fe5a3bb4b10bf9d2484b7efdba47c44f399f87bc058c55f0ef82efa0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FreeAbelianGroup.toFinsupp : FreeAbelianGroup X →+ X →₀ ℤ :=
  FreeAbelianGroup.lift fun x => Finsupp.single x (1 : ℤ)
#align free_abelian_group.to_finsupp FreeAbelianGroup.toFinsupp

/-- The group homomorphism `(X →₀ ℤ) →+ FreeAbelianGroup X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Varianta343d5635c91d9eb9a15290b4264621eb492d0d503dd9bb9998eaa8b85e81fd9.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578aab823e486601438bc713fdf5d3ab67fd8099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
