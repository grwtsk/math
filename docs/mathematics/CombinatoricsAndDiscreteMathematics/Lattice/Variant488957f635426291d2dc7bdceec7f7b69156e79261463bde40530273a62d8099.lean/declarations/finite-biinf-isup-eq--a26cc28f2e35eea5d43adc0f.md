# Finite.biInf_iSup_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95a116326b40a283adc1cb4fa17ae3a474b9bdd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:254bbe9e-7219-90c2-15c6-f4ebcc91a429",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:311719b0-b4fb-4e77-6da7-221cfb269c9f",
  "kind": "theorem",
  "lexical_name": "Finite.biInf_iSup_eq",
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
  "slug": "finite-biinf-isup-eq--a26cc28f2e35eea5d43adc0f",
  "source": {
    "blob": "95a116326b40a283adc1cb4fa17ae3a474b9bdd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 387,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a26cc28f2e35eea5d43adc0f11f062322085d7e3eb58d6a5405684c71c8c8f50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:311719b0-b4fb-4e77-6da7-221cfb269c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finite.biInf_iSup_eq {ι : Type v} {κ : ι → Sort w} [Nonempty (Π a, κ a)] [Order.Frame α]
    {s : Set ι} (hs : s.Finite) {f : Π a, κ a → α} :
    ⨅ a ∈ s, ⨆ b, f a b = ⨆ g : (Π a, κ a), ⨅ a ∈ s, f a (g a) := by
  classical
  suffices h : ∀ {κ : ι → Type w} [Nonempty (Π a, κ a)] (f : Π a, κ a → α),
      ⨅ a ∈ s, ⨆ b, f a b = ⨆ g : (Π a, κ a), ⨅ a ∈ s, f a (g a) by
    have : Nonempty (Π a, PLift (κ a)) := (Equiv.piCongrRight fun _ => Equiv.plift).nonempty
    simpa [← Equiv.plift.symm.iSup_comp, ← (Equiv.piCongrRight fun _ => Equiv.plift).symm.iSup_comp]
      using h (κ := fun a => PLift (κ a)) fun a b => f a b.down
  intro κ _ f
  have := hs.to_subtype
  have : Nonempty (Π a : { a // a ∉ s }, κ ↑a) := ‹Nonempty (Π a, κ a)›.map fun f a ↦ f a
  simp [← iInf_subtype'', iInf_iSup_eq_of_finite (ι := s),
    ← Equiv.piEquivPiSubtypeProd (· ∈ s) _ |>.symm.iSup_comp, iSup_prod, iSup_const]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a116326b40a283adc1cb4fa17ae3a474b9bdd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
