# support_rangeIcc_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28342b47-6785-d486-0a8f-b237a788eee1",
  "kind": "theorem",
  "lexical_name": "support_rangeIcc_subset",
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
  "slug": "support-rangeicc-subset--360989460cb36911db421db6",
  "source": {
    "blob": "8868bed89a0659ba9a97e35d3e56a2d82074ec1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:360989460cb36911db421db67375f2a0af6a3a21085992647fac4d2a83991baf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28342b47-6785-d486-0a8f-b237a788eee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_rangeIcc_subset [DecidableEq ι] [∀ i, DecidableEq (α i)] :
    (f.rangeIcc g).support ⊆ f.support ∪ g.support := by
  refine fun x hx => ?_
  by_contra h
  refine notMem_support_iff.2 ?_ hx
  rw [rangeIcc_apply, notMem_support_iff.1 (notMem_mono subset_union_left h),
    notMem_support_iff.1 (notMem_mono subset_union_right h)]
  exact Icc_self _

end BundledIcc

section Pi

variable [∀ i, Zero (α i)] [DecidableEq ι] [∀ i, DecidableEq (α i)]

/-- Given a finitely supported function `f : Π₀ i, Finset (α i)`, one can define the finset
`f.pi` of all finitely supported functions whose value at `i` is in `f i` for all `i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1c342ae20b82202c3e0facf0e9458f92a5fc7d63afc2040b91dd92f8d9406084.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8868bed89a0659ba9a97e35d3e56a2d82074ec1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
