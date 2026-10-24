# mapAccumr₂_eq_map₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b7ed782-66d1-4ed0-7132-2fc12b852c36",
  "kind": "theorem",
  "lexical_name": "mapAccumr₂_eq_map₂",
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
  "slug": "mapaccumr-eq-map--d69b2dc3d442350ccd8ec9ab",
  "source": {
    "blob": "334bb83e0b3f42a646b6512b149373e08892426a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d69b2dc3d442350ccd8ec9ab4e7a40ef19e02ee74ac576d482fee3fba8ede6c5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b7ed782-66d1-4ed0-7132-2fc12b852c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapAccumr₂_eq_map₂ {f : α → β → σ → σ × γ} {s₀ : σ} (S : Set σ) (h₀ : s₀ ∈ S)
    (closure : ∀ a b s, s ∈ S → (f a b s).1 ∈ S)
    (out : ∀ a b s s', s ∈ S → s' ∈ S → (f a b s).2 = (f a b s').2) :
    (mapAccumr₂ f xs ys s₀).snd = map₂ (f · · s₀ |>.snd) xs ys := by
  rw [Vector.map₂_eq_mapAccumr₂]
  apply mapAccumr₂_bisim_tail
  use fun s _ => s ∈ S, h₀
  exact @fun s _q a b h => ⟨closure a b s h, out a b s s₀ h h₀⟩

/--
If an accumulation function `f`, given an initial state `s`, produces `s` as its output state
for all possible input bits, then the state is redundant and can be optimized out.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334bb83e0b3f42a646b6512b149373e08892426a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
