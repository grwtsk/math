# findIdx_eq_getD_bind_find?_idxOf?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3d0cb75-979f-1735-caa9-6b1fe95b4d9b",
  "kind": "theorem",
  "lexical_name": "findIdx_eq_getD_bind_find?_idxOf?",
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
  "slug": "findidx-eq-getd-bind-find-idxof--e7bb13b0a64edf29264767f0",
  "source": {
    "blob": "da3e7cd62ee7298d6fa5c0523884fb122ea0717d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 745,
    "line": 734,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7bb13b0a64edf29264767f0327e35445e4c544a14e94b7984f7e6ea49f49536",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3d0cb75-979f-1735-caa9-6b1fe95b4d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 734–745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem findIdx_eq_getD_bind_find?_idxOf? [BEq α] [LawfulBEq α] {xs : Array α} {p : α → Bool} :
    xs.findIdx p = ((xs.find? p).bind (xs.idxOf? ·)).getD xs.size := by
  cases xs
  simp [List.findIdx_eq_getD_bind_find?_idxOf?]

/-! ### idxOf

The verification API for `idxOf` is still incomplete.
The lemmas below should be made consistent with those for `findIdx` (and proved using them).
-/

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean#L734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3e7cd62ee7298d6fa5c0523884fb122ea0717d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
