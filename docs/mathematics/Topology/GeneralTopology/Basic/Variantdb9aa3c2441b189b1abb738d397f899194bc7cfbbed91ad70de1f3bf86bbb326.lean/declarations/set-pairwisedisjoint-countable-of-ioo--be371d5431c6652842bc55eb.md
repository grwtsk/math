# Set.PairwiseDisjoint.countable_of_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1f549a8-cbcd-3f9e-b9ac-02b5bf122e20",
  "kind": "theorem",
  "lexical_name": "Set.PairwiseDisjoint.countable_of_Ioo",
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
  "slug": "set-pairwisedisjoint-countable-of-ioo--be371d5431c6652842bc55eb",
  "source": {
    "blob": "6bdc8ca6049a776cdfbf567bda8ac8ee527505d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 634,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be371d5431c6652842bc55eb761684d09fe302955e39c4f5c68054ba730da26b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f549a8-cbcd-3f9e-b9ac-02b5bf122e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.PairwiseDisjoint.countable_of_Ioo [SecondCountableTopology α]
    {y : α → α} {s : Set α} (h : PairwiseDisjoint s fun x => Ioo x (y x))
    (h' : ∀ x ∈ s, x < y x) : s.Countable :=
  have : (s \ { x | ∃ y, x ⋖ y }).Countable :=
    (h.subset sdiff_subset).countable_of_isOpen (fun _ _ ↦ isOpen_Ioo) fun x hx ↦
      (not_covBy_iff_exists_mem_Ioo (h' _ hx.1)).1 <| mt (Exists.intro (y x)) hx.2
  this.of_sdiff countable_setOfPred_covBy_right

/-- For a function taking values in a second countable space, the set of points `x` for
which the image under `f` of `(x, ∞)` is separated above from `f x` is countable. We give
here a version relative to a set `t`. -/
@[to_dual
/-- For a function taking values in a second countable space, the set of points `x` for
which the image under `f` of `(-∞, x)` is separated below from `f x` is countable. We give
here a version relative to a set `t`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bdc8ca6049a776cdfbf567bda8ac8ee527505d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
