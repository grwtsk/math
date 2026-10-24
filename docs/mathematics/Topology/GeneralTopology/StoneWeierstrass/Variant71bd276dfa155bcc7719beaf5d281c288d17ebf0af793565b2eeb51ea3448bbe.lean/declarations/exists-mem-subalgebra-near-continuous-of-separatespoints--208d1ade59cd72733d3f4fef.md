# exists_mem_subalgebra_near_continuous_of_separatesPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b3cb79d-fd68-0027-1ebc-384a3ada95b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39aa53fb-b44c-909a-b1e6-19bc3e16c20a",
  "kind": "theorem",
  "lexical_name": "exists_mem_subalgebra_near_continuous_of_separatesPoints",
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
  "slug": "exists-mem-subalgebra-near-continuous-of-separatespoints--208d1ade59cd72733d3f4fef",
  "source": {
    "blob": "ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:208d1ade59cd72733d3f4fefd8d9e3f29352b94a43051e59f8fc3508e4a70947",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39aa53fb-b44c-909a-b1e6-19bc3e16c20a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_subalgebra_near_continuous_of_separatesPoints (A : Subalgebra ℝ C(X, ℝ))
    (w : A.SeparatesPoints) (f : X → ℝ) (c : Continuous f) (ε : ℝ) (pos : 0 < ε) :
    ∃ g : A, ∀ x, ‖(g : X → ℝ) x - f x‖ < ε := by
  obtain ⟨g, b⟩ := exists_mem_subalgebra_near_continuousMap_of_separatesPoints A w ⟨f, c⟩ ε pos
  use g
  rwa [norm_lt_iff _ pos] at b

/-- A variant of the Stone-Weierstrass theorem where `X` need not be compact:
If `A` is a subalgebra of `C(X, ℝ)` which separates points, then, for any compact set `K ⊆ X`,
every real-valued continuous function on `X` is within any `ε > 0` of some element of `A` on `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
