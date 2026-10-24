# Ideal.exists_pow_le_of_le_radical_of_fG

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:815bcae9-cc24-d715-5252-f7617a415a29",
  "kind": "theorem",
  "lexical_name": "Ideal.exists_pow_le_of_le_radical_of_fG",
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
  "slug": "ideal-exists-pow-le-of-le-radical-of-fg--4a3a2a53eddf2115aa58f1f3",
  "source": {
    "blob": "3685b8fcdcf19cd98d0c0cd48c1676952621749f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 232,
    "path": "GRWTSK/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a3a2a53eddf2115aa58f1f344823aaa5dde25cf7b4b581cde379773ae5c5471",
  "verification": {
    "reference": "docs/verification/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:815bcae9-cc24-d715-5252-f7617a415a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exists_pow_le_of_le_radical_of_fG (hIJ : I ≤ J.radical) (hJ : J.radical.FG) :
    ∃ k : ℕ, I ^ k ≤ J := by
  obtain ⟨k, hk⟩ := J.exists_radical_pow_le_of_fg hJ
  use k
  calc
    I ^ k ≤ J.radical ^ k := Ideal.pow_mono hIJ _
    _ ≤ J := hk
#align local_cohomology.ideal.exists_pow_le_of_le_radical_of_fg localCohomology.Ideal.exists_pow_le_of_le_radical_of_fG

/-- The diagram of powers of `J` is initial in the diagram of all ideals with
radical containing `J`. This uses noetherianness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3685b8fcdcf19cd98d0c0cd48c1676952621749f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
