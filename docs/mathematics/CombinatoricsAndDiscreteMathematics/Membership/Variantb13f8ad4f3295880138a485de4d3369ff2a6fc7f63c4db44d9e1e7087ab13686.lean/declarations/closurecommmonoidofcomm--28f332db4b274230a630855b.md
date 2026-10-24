# closureCommMonoidOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:650d3712443aab8a03f12b1be6bf0840c8e238ad60a4966cdd91db345f064294",
  "kind": "def",
  "lexical_name": "closureCommMonoidOfComm",
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
  "slug": "closurecommmonoidofcomm--28f332db4b274230a630855b",
  "source": {
    "blob": "afe304991e9924cddf5a0eecaf3998608371c530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 520,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28f332db4b274230a630855b76a8a2eb58f0918794729328c7309e84b9b60684",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:650d3712443aab8a03f12b1be6bf0840c8e238ad60a4966cdd91db345f064294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closureCommMonoidOfComm {s : Set M} (hcomm : ∀ (a) (_ : a ∈ s) (b) (_ : b ∈ s), a * b = b * a) :
    CommMonoid (closure s) :=
  { (closure s).toMonoid with
    mul_comm := fun x y => by
      ext
      simp only [Submonoid.coe_mul]
      exact
        closure_induction₂ x.prop y.prop hcomm Commute.one_left Commute.one_right
          (fun x y z => Commute.mul_left) fun x y z => Commute.mul_right }
#align submonoid.closure_comm_monoid_of_comm Submonoid.closureCommMonoidOfComm
#align add_submonoid.closure_add_comm_monoid_of_comm AddSubmonoid.closureAddCommMonoidOfComm

end Submonoid

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe304991e9924cddf5a0eecaf3998608371c530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
