# ker_restrict_eq_of_codisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fec94e37175c4864d0d605d7f7cb7567896b6ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea003792-cb70-c445-d115-bb23b014ec4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f21d476-43c1-efc0-1723-80477badde06",
  "kind": "lemma",
  "lexical_name": "ker_restrict_eq_of_codisjoint",
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
  "slug": "ker-restrict-eq-of-codisjoint--a24573c9364aab9e408f4d6f",
  "source": {
    "blob": "8fec94e37175c4864d0d605d7f7cb7567896b6ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24573c9364aab9e408f4d6ff668fba75529cec6fdbda7fc6cde31dde2965e05",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f21d476-43c1-efc0-1723-80477badde06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_restrict_eq_of_codisjoint {p q : Submodule R M} (hpq : Codisjoint p q)
    {B : LinearMap.BilinForm R M} (hB : ∀ x ∈ p, ∀ y ∈ q, B x y = 0) :
    LinearMap.ker (B.restrict p) = (LinearMap.ker B).comap p.subtype := by
  ext ⟨z, hz⟩
  simp only [LinearMap.mem_ker, Submodule.mem_comap, Submodule.coe_subtype]
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · ext w
    obtain ⟨x, y, hx, hy, rfl⟩ := Submodule.codisjoint_iff_exists_add_eq.mp hpq w
    simpa [hB z hz y hy] using LinearMap.congr_fun h ⟨x, hx⟩
  · ext ⟨x, hx⟩
    simpa using LinearMap.congr_fun h x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fec94e37175c4864d0d605d7f7cb7567896b6ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
