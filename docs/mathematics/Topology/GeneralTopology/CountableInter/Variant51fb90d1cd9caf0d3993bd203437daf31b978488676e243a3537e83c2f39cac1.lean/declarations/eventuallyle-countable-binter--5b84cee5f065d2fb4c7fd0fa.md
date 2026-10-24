# EventuallyLE.countable_bInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0ea4940-cda3-fb18-5947-3220c1796997",
  "kind": "theorem",
  "lexical_name": "EventuallyLE.countable_bInter",
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
  "slug": "eventuallyle-countable-binter--5b84cee5f065d2fb4c7fd0fa",
  "source": {
    "blob": "b8530e54e584f5c61952059ad40825255694ae2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b84cee5f065d2fb4c7fd0fa0f179eadc5f7981fbb175da528d62a06beb8ad2d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0ea4940-cda3-fb18-5947-3220c1796997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallyLE.countable_bInter {ι : Type*} {S : Set ι} (hS : S.Countable)
    {s t : ∀ i ∈ S, Set α} (h : ∀ i hi, s i hi ≤ᶠ[l] t i hi) :
    ⋂ i ∈ S, s i ‹_› ≤ᶠ[l] ⋂ i ∈ S, t i ‹_› := by
  simp only [biInter_eq_iInter]
  haveI := hS.toEncodable
  exact EventuallyLE.countable_iInter fun i => h i i.2
#align eventually_le.countable_bInter EventuallyLE.countable_bInter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8530e54e584f5c61952059ad40825255694ae2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
