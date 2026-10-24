# isTopologicallyNilpotent_of_constantCoeff_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48b4a7d91692836d2fa9990a2fa889e54ecc37be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c4daaf7-5697-8d02-4b5c-eebfc50fb116",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30ea3c33-4dd0-cee7-2a0a-d548c1c6b464",
  "kind": "theorem",
  "lexical_name": "isTopologicallyNilpotent_of_constantCoeff_zero",
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
  "slug": "istopologicallynilpotent-of-constantcoeff-zero--b539c4ee3171975817ce6086",
  "source": {
    "blob": "48b4a7d91692836d2fa9990a2fa889e54ecc37be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variant21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b539c4ee3171975817ce6086b50298291bfa07a8b7d535c9f20e9cdf1191414d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiTopology/Variant21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30ea3c33-4dd0-cee7-2a0a-d548c1c6b464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicallyNilpotent_of_constantCoeff_zero [CommSemiring R]
    {f : MvPowerSeries σ R} (hf : constantCoeff f = 0) :
    Tendsto (fun n : ℕ => f ^ n) atTop (nhds 0) := by
  apply isTopologicallyNilpotent_of_constantCoeff_isNilpotent
  rw [hf]
  exact IsNilpotent.zero

/-- Assuming the base ring has a discrete topology, the powers of a `MvPowerSeries` converge to 0
iff its constant coefficient is nilpotent.
[N. Bourbaki, *Algebra II*, Chapter 4, §4, n°2, corollary of prop. 3][bourbaki1981]

See also `MvPowerSeries.LinearTopology.isTopologicallyNilpotent_iff_constantCoeff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiTopology/Variant21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiTopology/Variant21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b4a7d91692836d2fa9990a2fa889e54ecc37be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
