# pwFilter_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e952b5fc-f20d-2f8f-2fb9-5a66807b1f9a",
  "kind": "theorem",
  "lexical_name": "pwFilter_map",
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
  "slug": "pwfilter-map--c8ab68727f6ced2d00adf635",
  "source": {
    "blob": "48c212f926356cfa40937f5b57dedc1e03747b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 377,
    "path": "GRWTSK/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8ab68727f6ced2d00adf635bcd891c3b0cad5c00a51cd39ac1ef82600c47834",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e952b5fc-f20d-2f8f-2fb9-5a66807b1f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pwFilter_map (f : β → α) :
    ∀ l : List β, pwFilter R (map f l) = map f (pwFilter (fun x y => R (f x) (f y)) l)
  | [] => rfl
  | x :: xs =>
    if h : ∀ b ∈ pwFilter R (map f xs), R (f x) b then by
      have h' : ∀ b : β, b ∈ pwFilter (fun x y : β => R (f x) (f y)) xs → R (f x) (f b) :=
        fun b hb => h _ (by rw [pwFilter_map f xs]; apply mem_map_of_mem _ hb)
      rw [map, pwFilter_cons_of_pos h, pwFilter_cons_of_pos h', pwFilter_map f xs, map]
    else by
      have h' : ¬∀ b : β, b ∈ pwFilter (fun x y : β => R (f x) (f y)) xs → R (f x) (f b) :=
        fun hh =>
        h fun a ha => by
          rw [pwFilter_map f xs, mem_map] at ha
          rcases ha with ⟨b, hb₀, hb₁⟩
          subst a
          exact hh _ hb₀
      rw [map, pwFilter_cons_of_neg h, pwFilter_cons_of_neg h', pwFilter_map f xs]
#align list.pw_filter_map List.pwFilter_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c212f926356cfa40937f5b57dedc1e03747b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
