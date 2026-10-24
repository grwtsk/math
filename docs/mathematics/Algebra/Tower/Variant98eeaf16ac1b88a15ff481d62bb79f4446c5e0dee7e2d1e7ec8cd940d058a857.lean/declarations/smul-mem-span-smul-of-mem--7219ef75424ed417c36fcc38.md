# smul_mem_span_smul_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44fa85b1-0203-d260-677f-31d95b829d3e",
  "kind": "theorem",
  "lexical_name": "smul_mem_span_smul_of_mem",
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
  "slug": "smul-mem-span-smul-of-mem--7219ef75424ed417c36fcc38",
  "source": {
    "blob": "ccbbf562619b9f237a0807bf6bfc286ca2c4923c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 308,
    "path": "GRWTSK/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7219ef75424ed417c36fcc38d94dc6719a26af744af5ccb15334b4f440243116",
  "verification": {
    "reference": "docs/verification/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44fa85b1-0203-d260-677f-31d95b829d3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mem_span_smul_of_mem {s : Set S} {t : Set A} {k : S} (hks : k ∈ span R s) {x : A}
    (hx : x ∈ t) : k • x ∈ span R (s • t) :=
  span_induction hks (fun c hc => subset_span <| Set.mem_smul.2 ⟨c, x, hc, hx, rfl⟩)
    (by rw [zero_smul]; exact zero_mem _)
    (fun c₁ c₂ ih₁ ih₂ => by rw [add_smul]; exact add_mem ih₁ ih₂)
    fun b c hc => by rw [IsScalarTower.smul_assoc]; exact smul_mem _ _ hc
#align submodule.smul_mem_span_smul_of_mem Submodule.smul_mem_span_smul_of_mem

variable [SMulCommClass R S A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccbbf562619b9f237a0807bf6bfc286ca2c4923c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
