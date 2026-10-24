# evalRingHom_mapMatrix_comp_polyToMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8a62e02-f326-60da-c2bd-483d2bdbe98a",
  "kind": "lemma",
  "lexical_name": "evalRingHom_mapMatrix_comp_polyToMatrix",
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
  "slug": "evalringhom-mapmatrix-comp-polytomatrix--6999702db56db9708f70d4be",
  "source": {
    "blob": "ebbebf10673b378a17a7685dc877bb65d159cd3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6999702db56db9708f70d4be93d7a6b2cc3a93f2b2b4e8cdc44b709a05140af2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8a62e02-f326-60da-c2bd-483d2bdbe98a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma evalRingHom_mapMatrix_comp_polyToMatrix :
    (evalRingHom 0).mapMatrix.comp f.polyToMatrix = f.comp (evalRingHom 0) := by
  ext <;> simp [RingHom.polyToMatrix, ← AlgEquiv.symm_toRingEquiv, diagonal, apply_ite]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebbebf10673b378a17a7685dc877bb65d159cd3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
