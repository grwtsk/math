# pairwise_pmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:732b4532-6ba6-073e-489b-056beb5e4926",
  "kind": "theorem",
  "lexical_name": "pairwise_pmap",
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
  "slug": "pairwise-pmap--97eecc59a1b416f5447d92bb",
  "source": {
    "blob": "48c212f926356cfa40937f5b57dedc1e03747b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97eecc59a1b416f5447d92bbeae9e5c445d1cc6a9c488d8234b05b04a60142f1",
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

Occurrence: `result:732b4532-6ba6-073e-489b-056beb5e4926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwise_pmap {p : β → Prop} {f : ∀ b, p b → α} {l : List β} (h : ∀ x ∈ l, p x) :
    Pairwise R (l.pmap f h) ↔
      Pairwise (fun b₁ b₂ => ∀ (h₁ : p b₁) (h₂ : p b₂), R (f b₁ h₁) (f b₂ h₂)) l := by
  induction' l with a l ihl
  · simp
  obtain ⟨_, hl⟩ : p a ∧ ∀ b, b ∈ l → p b := by simpa using h
  simp only [ihl hl, pairwise_cons, bex_imp, pmap, and_congr_left_iff, mem_pmap]
  refine' fun _ => ⟨fun H b hb _ hpb => H _ _ hb rfl, _⟩
  rintro H _ b hb rfl
  exact H b hb _ _
#align list.pairwise_pmap List.pairwise_pmap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c212f926356cfa40937f5b57dedc1e03747b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
