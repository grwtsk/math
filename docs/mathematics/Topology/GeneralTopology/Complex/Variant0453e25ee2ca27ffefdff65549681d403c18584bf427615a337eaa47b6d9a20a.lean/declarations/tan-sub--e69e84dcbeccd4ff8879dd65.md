# tan_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20f5400a-7573-d181-1e12-5669ba888114",
  "kind": "theorem",
  "lexical_name": "tan_sub",
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
  "slug": "tan-sub--e69e84dcbeccd4ff8879dd65",
  "source": {
    "blob": "cd3f547b5b6d4f99b4efd0c49772470895d6e9da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e69e84dcbeccd4ff8879dd659420a5694d97dd4b42949ad10f7176f97ceb6de3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f5400a-7573-d181-1e12-5669ba888114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_sub {x y : ℂ}
    (h : ((∀ k : ℤ, x ≠ (2 * k + 1) * π / 2) ∧ ∀ l : ℤ, y ≠ (2 * l + 1) * π / 2) ∨
      (∃ k : ℤ, x = (2 * k + 1) * π / 2) ∧ ∃ l : ℤ, y = (2 * l + 1) * π / 2) :
    tan (x - y) = (tan x - tan y) / (1 + tan x * tan y) := by
  have := tan_add (x := x) (y := -y) <| by
    rcases h with ⟨x_ne, minus_y_ne⟩ | ⟨x_eq, minus_y_eq⟩
    · refine .inl ⟨x_ne, fun l => ?_⟩
      rw [Ne, neg_eq_iff_eq_neg]
      convert! minus_y_ne (-l - 1) using 2
      push_cast
      ring
    · refine .inr ⟨x_eq, ?_⟩
      rcases minus_y_eq with ⟨l, rfl⟩
      use -l - 1
      push_cast
      ring
  rw [tan_neg] at this
  convert! this using 2
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd3f547b5b6d4f99b4efd0c49772470895d6e9da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
