# _root_.GRWTSK.Algebra.RingTheory.PrimeFactors.Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.IsRadical.dvd_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ba48267-acf9-78df-88ef-b6d22b1f0f09",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.RingTheory.PrimeFactors.Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.IsRadical.dvd_radical",
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
  "slug": "root-grwtsk-algebra-ringtheory-primefactors-variant7258cd8bfd387804fcd32--2c4af422330f38aa59ee4975",
  "source": {
    "blob": "c1d676991ce863bb4e497a44596cda8d3b4e3dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 166,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c4af422330f38aa59ee49750f7cf21ad7c10483e06eaf3f38feab90f4b3cf00",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ba48267-acf9-78df-88ef-b6d22b1f0f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.RingTheory.PrimeFactors.Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.IsRadical.dvd_radical (ha : IsRadical a) (ha' : a ≠ 0) : a ∣ radical a :=
  (radical_associated ha ha').dvd'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variantb83edfca227f9e3f6018d0a38fe2c40d1ad3a08ddfad603b43d03c1163c42e22.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d676991ce863bb4e497a44596cda8d3b4e3dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
