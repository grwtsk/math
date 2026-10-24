# periodicB2_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcd8581f-e9ef-f638-3ff8-6cf8957ba49c",
  "kind": "theorem",
  "lexical_name": "periodicB2_ae_hasDerivAt",
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
  "slug": "periodicb2-ae-hasderivat--4d74f6826ba86b482de6825f",
  "source": {
    "blob": "24b320a7366b93edd03eacd0d3a865cf6872e43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 73,
    "path": "GRWTSK/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d74f6826ba86b482de6825f957e6fe9b16a091fa5b2ce1675215726eaee8db7",
  "verification": {
    "reference": "docs/verification/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcd8581f-e9ef-f638-3ff8-6cf8957ba49c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem periodicB2_ae_hasDerivAt :
    ∀ᵐ x : ℝ ∂volume, HasDerivAt periodicB2 (2 * periodicB1 x) x := by
  filter_upwards [(Set.countable_range (fun n : ℤ => (n : ℝ))).ae_notMem volume]
    with x hx
  apply periodicB2_hasDerivAt
  intro he
  exact hx ⟨⌊x⌋, he.symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24b320a7366b93edd03eacd0d3a865cf6872e43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
