# definedAtLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61f9f964a3936339c21a161b25fe295ee42096aef72b2a3d12dca475531fd374",
  "kind": "def",
  "lexical_name": "definedAtLeft",
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
  "slug": "definedatleft--7f87e2be35ca55f39c5f4b4d",
  "source": {
    "blob": "c09ae8bf900e4ae05b81204b3656bee08f27b8a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f87e2be35ca55f39c5f4b4de00882fa27868936ce50bb8c1721a61dd50fcaa9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61f9f964a3936339c21a161b25fe295ee42096aef72b2a3d12dca475531fd374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def definedAtLeft [DenselyOrdered β] [NoMinOrder β] [NoMaxOrder β] [Nonempty β] (a : α) :
    Cofinal (PartialIso α β) where
  carrier := {f | ∃ b : β, (a, b) ∈ f.val}
  isCofinal f := by
    obtain ⟨b, a_b⟩ := exists_across f a
    refine
      ⟨⟨insert (a, b) f.val, fun p hp q hq ↦ ?_⟩, ⟨b, Finset.mem_insert_self _ _⟩,
        Finset.subset_insert _ _⟩
    rw [Finset.mem_insert] at hp hq
    rcases hp with (rfl | pf) <;> rcases hq with (rfl | qf)
    · simp only [cmp_self_eq_eq]
    · rw [cmp_eq_cmp_symm]
      exact a_b _ qf
    · exact a_b _ pf
    · exact f.prop _ pf _ qf

variable (α) {β}

/-- The set of partial isomorphisms defined at `b : β`, together with a proof that any
    partial isomorphism can be extended to include `b`. We prove this by symmetry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09ae8bf900e4ae05b81204b3656bee08f27b8a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
