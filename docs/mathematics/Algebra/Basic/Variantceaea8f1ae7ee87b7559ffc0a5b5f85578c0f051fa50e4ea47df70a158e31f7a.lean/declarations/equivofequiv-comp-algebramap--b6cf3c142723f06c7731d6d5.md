# equivOfEquiv_comp_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17cc4e0c-6626-14d9-2542-285e3af0dd3d",
  "kind": "theorem",
  "lexical_name": "equivOfEquiv_comp_algebraMap",
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
  "slug": "equivofequiv-comp-algebramap--b6cf3c142723f06c7731d6d5",
  "source": {
    "blob": "d05c2dddcddcc926e98a56952b70c6dbbde87a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 516,
    "path": "GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6cf3c142723f06c7731d6d5eaeee5f4e593dbf1b76d8799646d7266f8ec0895",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17cc4e0c-6626-14d9-2542-285e3af0dd3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivOfEquiv_comp_algebraMap (hSR : S ≃+* R) :
    (↑(equivOfEquiv L M hSR) : L →+* M).comp (algebraMap S L) = (algebraMap R M).comp hSR :=
  (equivOfEquivAux L M hSR).2
#align is_alg_closure.equiv_of_equiv_comp_algebra_map IsAlgClosure.equivOfEquiv_comp_algebraMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05c2dddcddcc926e98a56952b70c6dbbde87a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
