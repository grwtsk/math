# primeSpectrumEquivMaximalSpectrum_comp_asIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4c2b66e-4c20-c92c-16f3-a02233c998bb",
  "kind": "lemma",
  "lexical_name": "primeSpectrumEquivMaximalSpectrum_comp_asIdeal",
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
  "slug": "primespectrumequivmaximalspectrum-comp-asideal--8983191ee41478563315c7c8",
  "source": {
    "blob": "36478d4039716d97e5176274c36b4c62e3870268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 569,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8983191ee41478563315c7c885d0168c557aa442a930c653ae093b05a822f3f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4c2b66e-4c20-c92c-16f3-a02233c998bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma primeSpectrumEquivMaximalSpectrum_comp_asIdeal :
    MaximalSpectrum.asIdeal ∘ primeSpectrumEquivMaximalSpectrum =
      PrimeSpectrum.asIdeal (R := R) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36478d4039716d97e5176274c36b4c62e3870268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
