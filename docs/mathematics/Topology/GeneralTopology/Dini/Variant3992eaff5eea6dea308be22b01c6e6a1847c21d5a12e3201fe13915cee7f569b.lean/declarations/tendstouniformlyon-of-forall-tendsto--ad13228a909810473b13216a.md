# tendstoUniformlyOn_of_forall_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d90353e0-c75e-9b59-2be9-ebb49ddd4633",
  "kind": "lemma",
  "lexical_name": "tendstoUniformlyOn_of_forall_tendsto",
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
  "slug": "tendstouniformlyon-of-forall-tendsto--ad13228a909810473b13216a",
  "source": {
    "blob": "1ed32fdb37f0441190e19fde0d0eaad686d5e566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad13228a909810473b13216af436342a2504d02958f633b2c17f7ed957575178",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d90353e0-c75e-9b59-2be9-ebb49ddd4633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoUniformlyOn_of_forall_tendsto {s : Set α} (hs : IsCompact s)
    (hF_cont : ∀ i, ContinuousOn (F i) s) (hF_mono : ∀ x ∈ s, Monotone (F · x))
    (hf : ContinuousOn f s) (h_tendsto : ∀ x ∈ s, Tendsto (F · x) atTop (𝓝 (f x))) :
    TendstoUniformlyOn F f atTop s :=
  tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact hs |>.mp <|
    tendstoLocallyUniformlyOn_of_forall_tendsto hF_cont hF_mono hf h_tendsto

end Monotone

namespace Antitone

/-- **Dini's theorem**: if `F n` is a monotone decreasing collection of continuous functions on a
converging pointwise to a continuous function `f`, then `F n` converges locally uniformly to `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed32fdb37f0441190e19fde0d0eaad686d5e566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
