# map_div_right_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7459c500-903e-fa76-bc13-145244deb92f",
  "kind": "theorem",
  "lexical_name": "map_div_right_divisors",
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
  "slug": "map-div-right-divisors--40da1a82ad50cedced3a3b61",
  "source": {
    "blob": "d5c9e5d2d965db5c04daffc92ac6b5dda71a6f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 373,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40da1a82ad50cedced3a3b61a1e7de8413dba076896790c4467f2f3fe3686724",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7459c500-903e-fa76-bc13-145244deb92f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_div_right_divisors :
    n.divisors.map ⟨fun d => (d, n / d), fun _ _ => congr_arg Prod.fst⟩ =
      n.divisorsAntidiagonal := by
  ext ⟨d, nd⟩
  simp only [mem_map, mem_divisorsAntidiagonal, Function.Embedding.coeFn_mk, mem_divisors,
    Prod.ext_iff, and_left_comm, exists_eq_left]
  constructor
  · rintro ⟨⟨⟨k, rfl⟩, hn⟩, rfl⟩
    rw [Nat.mul_div_cancel_left _ (left_ne_zero_of_mul hn).bot_lt]
    exact ⟨rfl, hn⟩
  · rintro ⟨rfl, hn⟩
    exact ⟨⟨dvd_mul_right _ _, hn⟩, Nat.mul_div_cancel_left _ (left_ne_zero_of_mul hn).bot_lt⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c9e5d2d965db5c04daffc92ac6b5dda71a6f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
