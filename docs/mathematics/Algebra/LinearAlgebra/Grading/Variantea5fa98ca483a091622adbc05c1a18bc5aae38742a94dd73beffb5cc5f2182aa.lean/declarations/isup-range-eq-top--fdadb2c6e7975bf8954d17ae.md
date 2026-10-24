# iSup_ι_range_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9d2aeb7-7e89-0f5c-206f-517dfab0d4db",
  "kind": "theorem",
  "lexical_name": "iSup_ι_range_eq_top",
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
  "slug": "isup-range-eq-top--fdadb2c6e7975bf8954d17ae",
  "source": {
    "blob": "aa9dfb4dc719918975f2dd63419156e81e12135c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdadb2c6e7975bf8954d17aed39593cf8d96ddfeba54ea692e4b12e784baa19e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9d2aeb7-7e89-0f5c-206f-517dfab0d4db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_ι_range_eq_top : ⨆ i : ℕ, LinearMap.range (ι Q) ^ i = ⊤ := by
  rw [← (DirectSum.Decomposition.isInternal (evenOdd Q)).submodule_iSup_eq_top, eq_comm]
  calc
    -- Porting note: needs extra annotations, no longer unifies against the goal in the face of
    -- ambiguity
    ⨆ (i : ZMod 2) (j : { n : ℕ // ↑n = i }), LinearMap.range (ι Q) ^ (j : ℕ) =
        ⨆ i : Σ i : ZMod 2, { n : ℕ // ↑n = i }, LinearMap.range (ι Q) ^ (i.2 : ℕ) := by
      rw [iSup_sigma]
    _ = ⨆ i : ℕ, LinearMap.range (ι Q) ^ i :=
      Function.Surjective.iSup_congr (fun i => i.2) (fun i => ⟨⟨_, i, rfl⟩, rfl⟩) fun _ => rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9dfb4dc719918975f2dd63419156e81e12135c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
