# rootsOfUnityEquivNthRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:646e9ca55c0ff7a877295e7be8065974d5b17afb58da95675e7e1439fc335f6f",
  "kind": "def",
  "lexical_name": "rootsOfUnityEquivNthRoots",
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
  "slug": "rootsofunityequivnthroots--20f004381d81f45b91ec5ed4",
  "source": {
    "blob": "16f0e4840a5bd997c0264c5ad2940ff923ee6a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 208,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20f004381d81f45b91ec5ed499ffed8dfdbc4f9e4415e56737e4b1fb02df8487",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:646e9ca55c0ff7a877295e7be8065974d5b17afb58da95675e7e1439fc335f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rootsOfUnityEquivNthRoots : rootsOfUnity k R ≃ { x // x ∈ nthRoots k (1 : R) } := by
  refine'
    { toFun := fun x => ⟨(x : Rˣ), mem_rootsOfUnity_iff_mem_nthRoots.mp x.2⟩
      invFun := fun x => ⟨⟨x, ↑x ^ (k - 1 : ℕ), _, _⟩, _⟩
      left_inv := _
      right_inv := _ }
  pick_goal 4; · rintro ⟨x, hx⟩; ext; rfl
  pick_goal 4; · rintro ⟨x, hx⟩; ext; rfl
  all_goals
    rcases x with ⟨x, hx⟩; rw [mem_nthRoots k.pos] at hx
    simp only [Subtype.coe_mk, ← pow_succ, ← pow_succ', hx,
      tsub_add_cancel_of_le (show 1 ≤ (k : ℕ) from k.one_le)]
  · show (_ : Rˣ) ^ (k : ℕ) = 1
    simp only [Units.ext_iff, hx, Units.val_mk, Units.val_one, Subtype.coe_mk,
      Units.val_pow_eq_pow_val]
#align roots_of_unity_equiv_nth_roots rootsOfUnityEquivNthRoots

variable {k R}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16f0e4840a5bd997c0264c5ad2940ff923ee6a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
