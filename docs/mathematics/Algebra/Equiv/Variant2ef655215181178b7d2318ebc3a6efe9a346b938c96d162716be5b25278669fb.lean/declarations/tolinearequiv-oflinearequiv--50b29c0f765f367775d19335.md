# toLinearEquiv_ofLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e77e55a9-7c1b-a9e8-4b15-c064f4117168",
  "kind": "theorem",
  "lexical_name": "toLinearEquiv_ofLinearEquiv",
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
  "slug": "tolinearequiv-oflinearequiv--50b29c0f765f367775d19335",
  "source": {
    "blob": "2accba0227a263bd6d14aaadea3bd43284f358a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 666,
    "path": "GRWTSK/Algebra/Equiv/Variant2ef655215181178b7d2318ebc3a6efe9a346b938c96d162716be5b25278669fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b29c0f765f367775d193351a8cb17963a6091f36d70da021ba90a9c09a3749",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variant2ef655215181178b7d2318ebc3a6efe9a346b938c96d162716be5b25278669fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77e55a9-7c1b-a9e8-4b15-c064f4117168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLinearEquiv_ofLinearEquiv : toLinearEquiv (ofLinearEquiv l map_mul commutes) = l := by
  ext
  rfl
#align alg_equiv.to_linear_equiv_of_linear_equiv AlgEquiv.toLinearEquiv_ofLinearEquiv

end OfLinearEquiv

section OfRingEquiv

/-- Promotes a linear ring_equiv to an AlgEquiv. -/
@[simps apply symm_apply toEquiv] -- Porting note: don't want redundant `toEquiv_symm_apply` simps
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variant2ef655215181178b7d2318ebc3a6efe9a346b938c96d162716be5b25278669fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variant2ef655215181178b7d2318ebc3a6efe9a346b938c96d162716be5b25278669fb.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2accba0227a263bd6d14aaadea3bd43284f358a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
