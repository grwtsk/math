# Submodule.mem_of_isLocalized_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90ade41827edf140fa025e6c976406a71cc2add0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5e7ff7e-8adc-6df8-597a-bd6aa283cb3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47ff19ac-2408-9adb-3904-01ea9a028689",
  "kind": "theorem",
  "lexical_name": "Submodule.mem_of_isLocalized_span",
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
  "slug": "submodule-mem-of-islocalized-span--0d764af1949b4db1f863d78f",
  "source": {
    "blob": "90ade41827edf140fa025e6c976406a71cc2add0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 160,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d764af1949b4db1f863d78fbfd22bf1c8d14cd62f633b927fc02d9879128a93",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ff19ac-2408-9adb-3904-01ea9a028689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.mem_of_isLocalized_span {m : M} {N : Submodule R M}
    (h : ∀ r : s, f r m ∈ N.localized₀ (.powers r.1) (f r)) : m ∈ N := by
  let I : Ideal R := N.comap (LinearMap.toSpanSingleton R M m)
  suffices I = ⊤ by simpa [I] using I.eq_top_iff_one.mp this
  by_contra! ne
  have ⟨r, hrs, disj⟩ := exists_disjoint_powers_of_span_eq_top s span_eq _ ne
  let r : s := ⟨r, hrs⟩
  obtain ⟨a, ha, t, e⟩ := h r
  rw [← IsLocalizedModule.mk'_one (.powers r.1), IsLocalizedModule.mk'_eq_mk'_iff] at e
  have ⟨u, hu⟩ := e
  simp_rw [smul_smul] at hu
  exact Set.disjoint_right.mp disj (u * t).2 (by apply hu ▸ smul_mem _ _ ha)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Varianta3a339a6edef6bb081bc33126a8417a01bfdb3e96a9039dab19324280dfbbfcd.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90ade41827edf140fa025e6c976406a71cc2add0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
