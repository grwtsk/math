# continuous_proximity_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca64c1ec-851a-58be-68e4-a9523380ee35",
  "kind": "theorem",
  "lexical_name": "continuous_proximity_top",
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
  "slug": "continuous-proximity-top--13a70e2ef008bb243b481f93",
  "source": {
    "blob": "28c33d0edaf36c6c9ae2d35afcfeefa401bdaea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13a70e2ef008bb243b481f93a2798725d3c5986eebf8e2bdee40b8f08df4876c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca64c1ec-851a-58be-68e4-a9523380ee35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[fun_prop] theorem continuous_proximity_top (hf : Continuous f) :
    Continuous (proximity f ⊤) := by
  simp only [proximity, reduceDIte]
  fun_prop

/-!
## Behaviour under Arithmetic Operations
-/

/--
The proximity function of a sum of functions at `⊤` is less than or equal to the sum of the
proximity functions of the summand, plus `log` of the number of summands.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c33d0edaf36c6c9ae2d35afcfeefa401bdaea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
