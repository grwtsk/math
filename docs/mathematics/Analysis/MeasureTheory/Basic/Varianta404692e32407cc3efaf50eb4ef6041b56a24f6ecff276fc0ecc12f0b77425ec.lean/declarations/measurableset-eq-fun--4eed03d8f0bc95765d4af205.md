# measurableSet_eq_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4b0bab9-561b-4871-3aa3-dba42fd346e8",
  "kind": "lemma",
  "lexical_name": "measurableSet_eq_fun",
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
  "slug": "measurableset-eq-fun--4eed03d8f0bc95765d4af205",
  "source": {
    "blob": "387265fdfa927150926529b5ea6818f96cb354e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 931,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eed03d8f0bc95765d4af20555e958200879756117f8b383df2c632fc5e68b0e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4b0bab9-561b-4871-3aa3-dba42fd346e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_eq_fun (hf : StronglyMeasurable[m] f) (hg : StronglyMeasurable[m] g) :
    MeasurableSet[m] {a | f a = g a} := by
  borelize (E × E)
  exact (hf.prodMk hg).measurable isClosed_diagonal.measurableSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `387265fdfa927150926529b5ea6818f96cb354e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
