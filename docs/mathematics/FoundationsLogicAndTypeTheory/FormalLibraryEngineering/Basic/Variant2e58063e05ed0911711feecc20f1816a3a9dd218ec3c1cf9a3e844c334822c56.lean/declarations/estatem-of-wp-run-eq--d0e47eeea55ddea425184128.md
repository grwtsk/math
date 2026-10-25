# EStateM.of_wp_run_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1dedb257778bb87b45c68c8d17aa6fdd3558336",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cd62ab7-7a2e-b576-0485-2641c9236b9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84c5e3cd-150c-2c11-2bba-47af09d084f3",
  "kind": "theorem",
  "lexical_name": "EStateM.of_wp_run_eq",
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
  "slug": "estatem-of-wp-run-eq--d0e47eeea55ddea425184128",
  "source": {
    "blob": "d1dedb257778bb87b45c68c8d17aa6fdd3558336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 479,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e47eeea55ddea425184128796987576e0d4ff32cad1faf7a2d30996726acd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84c5e3cd-150c-2c11-2bba-47af09d084f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EStateM.of_wp_run_eq {ε σ α : Type} {x : EStateM.Result ε σ α}
  {prog : EStateM ε σ α} {s : σ}
  (h : EStateM.run prog s = x) (P : EStateM.Result ε σ α → Prop)
  (hwp : wp prog (fun a s' => P (.ok a s')) (fun e s' => P (.error e s')) s) :
    P x := by
  rw [← h]
  change P (prog s)
  cases heq : prog s with
  | ok a s' =>
    simpa [wp, WP.wpTrans, heq] using hwp
  | error e s' =>
    simpa [wp, WP.wpTrans, heq] using hwp

end Std.Internal.Do
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1dedb257778bb87b45c68c8d17aa6fdd3558336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
