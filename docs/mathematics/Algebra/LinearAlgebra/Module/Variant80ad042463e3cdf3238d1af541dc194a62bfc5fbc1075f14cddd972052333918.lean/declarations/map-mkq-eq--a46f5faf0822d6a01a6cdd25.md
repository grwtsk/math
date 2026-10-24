# map_mkQ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e85f7aa-b9b3-be18-7b10-c137f1847a82",
  "kind": "theorem",
  "lexical_name": "map_mkQ_eq",
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
  "slug": "map-mkq-eq--a46f5faf0822d6a01a6cdd25",
  "source": {
    "blob": "d410a371204e948ea66760701c4abebafcf70ecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46f5faf0822d6a01a6cdd259896d85b99fe721646058b346809a3b1cc92e7f3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e85f7aa-b9b3-be18-7b10-c137f1847a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_mkQ_eq {N₁ N₂ : Submodule R M} (h : N₁ ≤ N₂) (h' : N₂.FG) :
    N₁.map (Submodule.mkQ (𝔪 • N₂)) = N₂.map (Submodule.mkQ (𝔪 • N₂)) ↔ N₁ = N₂ := by
  constructor
  · intro hN
    have : N₂ ≤ 𝔪 • N₂ ⊔ N₁ := by
      simpa using Submodule.comap_mono (f := Submodule.mkQ (𝔪 • N₂)) hN.ge
    rw [sup_comm] at this
    exact h.antisymm (Submodule.le_of_le_smul_of_le_jacobson_bot h'
      (by rw [jacobson_eq_maximalIdeal]; exact bot_ne_top) this)
  · rintro rfl; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d410a371204e948ea66760701c4abebafcf70ecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
