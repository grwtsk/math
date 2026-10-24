# isClosed_range_of_spaced_out

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82dc8241-16b6-8ca4-f319-7ec55621e1da",
  "kind": "theorem",
  "lexical_name": "isClosed_range_of_spaced_out",
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
  "slug": "isclosed-range-of-spaced-out--5ce5e50787acb9c19bf0c5cf",
  "source": {
    "blob": "8041057b0f000fc21fa6ad7206c20e3699305b49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ce5e50787acb9c19bf0c5cfff82d068c2e5d50e7289c8b933a8661971c3a0c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82dc8241-16b6-8ca4-f319-7ec55621e1da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_range_of_spaced_out {ι} [T0Space α] {V₀ : Set (α × α)} (V₀_in : V₀ ∈ 𝓤 α)
    {f : ι → α} (hf : Pairwise fun x y => (f x, f y) ∉ V₀) : IsClosed (range f) :=
  isClosed_of_spaced_out V₀_in <| by
    rintro _ ⟨x, rfl⟩ _ ⟨y, rfl⟩ h
    exact hf (ne_of_apply_ne f h)

/-!
### Separation quotient
-/

namespace SeparationQuotient

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8041057b0f000fc21fa6ad7206c20e3699305b49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
