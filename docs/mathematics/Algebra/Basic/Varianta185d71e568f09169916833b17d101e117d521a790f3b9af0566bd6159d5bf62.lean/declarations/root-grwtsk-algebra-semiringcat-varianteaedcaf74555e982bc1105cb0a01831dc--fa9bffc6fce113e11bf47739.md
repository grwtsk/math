# _root_.GRWTSK.Algebra.SemiRingCat.Varianteaedcaf74555e982bc1105cb0a01831dcbb504f4fc1b0ea5386a9148f7e90bda.RingEquiv.toCommSemiRingCatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97b4527e48645b85223b9422149d37e68ac34847eb7b62c118105c718de35300",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.SemiRingCat.Varianteaedcaf74555e982bc1105cb0a01831dcbb504f4fc1b0ea5386a9148f7e90bda.RingEquiv.toCommSemiRingCatIso",
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
  "slug": "root-grwtsk-algebra-semiringcat-varianteaedcaf74555e982bc1105cb0a01831dc--fa9bffc6fce113e11bf47739",
  "source": {
    "blob": "a47366b9ca0a862929af62f9020815538941451b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 511,
    "path": "GRWTSK/Algebra/Basic/Varianta185d71e568f09169916833b17d101e117d521a790f3b9af0566bd6159d5bf62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa9bffc6fce113e11bf47739072503cdc66b33877e6d2cd4e46432ea9581985a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta185d71e568f09169916833b17d101e117d521a790f3b9af0566bd6159d5bf62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97b4527e48645b85223b9422149d37e68ac34847eb7b62c118105c718de35300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.SemiRingCat.Varianteaedcaf74555e982bc1105cb0a01831dcbb504f4fc1b0ea5386a9148f7e90bda.RingEquiv.toCommSemiRingCatIso
    {R S : Type u} [CommSemiring R] [CommSemiring S] (e : R ≃+* S) :
    of R ≅ of S where
  hom := ofHom e
  inv := ofHom e.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta185d71e568f09169916833b17d101e117d521a790f3b9af0566bd6159d5bf62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta185d71e568f09169916833b17d101e117d521a790f3b9af0566bd6159d5bf62.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47366b9ca0a862929af62f9020815538941451b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
