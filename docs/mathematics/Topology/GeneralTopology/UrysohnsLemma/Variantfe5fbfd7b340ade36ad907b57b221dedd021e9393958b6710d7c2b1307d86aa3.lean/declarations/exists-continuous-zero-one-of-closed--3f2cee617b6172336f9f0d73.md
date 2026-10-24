# exists_continuous_zero_one_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dfd2800-d32f-0432-02b8-fbc7d6a04a85",
  "kind": "theorem",
  "lexical_name": "exists_continuous_zero_one_of_closed",
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
  "slug": "exists-continuous-zero-one-of-closed--3f2cee617b6172336f9f0d73",
  "source": {
    "blob": "7f17ed9b742c281ae4c6dd3c83b47ffb540f9926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f2cee617b6172336f9f0d7350231d3f0bc05ea0eaeaafb004a5a1de0f570de0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dfd2800-d32f-0432-02b8-fbc7d6a04a85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_zero_one_of_closed {s t : Set X} (hs : IsClosed s) (ht : IsClosed t)
    (hd : Disjoint s t) : ∃ f : C(X, ℝ), EqOn f 0 s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 := by
  -- The actual proof is in the code above. Here we just repack it into the expected format.
  set c : Urysohns.CU X := ⟨s, tᶜ, hs, ht.isOpen_compl, disjoint_left.1 hd⟩
  exact ⟨⟨c.lim, c.continuous_lim⟩, c.lim_of_mem_C, fun x hx => c.lim_of_nmem_U _ fun h => h hx,
    c.lim_mem_Icc⟩
#align exists_continuous_zero_one_of_closed exists_continuous_zero_one_of_closed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f17ed9b742c281ae4c6dd3c83b47ffb540f9926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
