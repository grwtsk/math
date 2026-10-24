# exists_left_complement'_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a60ef223-25a5-156c-c54f-416686b3d956",
  "kind": "theorem",
  "lexical_name": "exists_left_complement'_of_coprime",
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
  "slug": "exists-left-complement-of-coprime--548b8d0af3c798c49600a3c6",
  "source": {
    "blob": "f4a972b6051a0c32d0d4b0dc56aa44753d9bb0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 330,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:548b8d0af3c798c49600a3c6c7a5655a7f0364a485dfb4f5302ecde6f43b7fc4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a60ef223-25a5-156c-c54f-416686b3d956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_left_complement'_of_coprime {N : Subgroup G} [N.Normal]
    (hN : Nat.coprime (Nat.card N) N.index) : ∃ H : Subgroup G, IsComplement' H N :=
  Exists.imp (fun _ => IsComplement'.symm) (exists_right_complement'_of_coprime hN)
#align subgroup.exists_left_complement'_of_coprime Subgroup.exists_left_complement'_of_coprime

end Subgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a972b6051a0c32d0d4b0dc56aa44753d9bb0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
