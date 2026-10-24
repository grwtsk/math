# CoxeterMatrix.toCoxeterSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38b80712b5211c2db535b7de8f96ec7bee8ac723298d864c6a28330a936ee943",
  "kind": "def",
  "lexical_name": "CoxeterMatrix.toCoxeterSystem",
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
  "slug": "coxetermatrix-tocoxetersystem--4ac25ddb9300f58ad7921bf5",
  "source": {
    "blob": "556b92e9135ec07d3437ab012daf6312c8563787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 166,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ac25ddb9300f58ad7921bf5b0283c3be138089432cdfc9208ec15bf323ddd44",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38b80712b5211c2db535b7de8f96ec7bee8ac723298d864c6a28330a936ee943`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CoxeterMatrix.toCoxeterSystem : CoxeterSystem M M.Group := ⟨.refl _⟩

end

namespace CoxeterSystem

open CoxeterMatrix

variable {B B' : Type*} (e : B ≃ B')
variable {W H : Type*} [Group W] [Group H]
variable {M : CoxeterMatrix B} (cs : CoxeterSystem M W)

/-- Reindex a Coxeter system through a bijection of the indexing sets. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `556b92e9135ec07d3437ab012daf6312c8563787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
