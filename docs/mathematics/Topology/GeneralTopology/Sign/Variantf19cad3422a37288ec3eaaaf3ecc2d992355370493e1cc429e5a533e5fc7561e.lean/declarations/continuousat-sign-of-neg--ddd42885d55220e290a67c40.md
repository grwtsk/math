# continuousAt_sign_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b27179d12e524ca90a365a6a3c8c28ce055b918",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7323399b-4844-e804-e609-f23a3c209038",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b978776-5527-a272-3d88-5c4ffc0e0a01",
  "kind": "theorem",
  "lexical_name": "continuousAt_sign_of_neg",
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
  "slug": "continuousat-sign-of-neg--ddd42885d55220e290a67c40",
  "source": {
    "blob": "6b27179d12e524ca90a365a6a3c8c28ce055b918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddd42885d55220e290a67c40fb9e7d40d939a1791a5ee3fac2725ecf27cc91be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b978776-5527-a272-3d88-5c4ffc0e0a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_sign_of_neg {a : α} (h : a < 0) : ContinuousAt SignType.sign a := by
  refine (continuousAt_const : ContinuousAt (fun x => (-1 : SignType)) a).congr ?_
  rw [Filter.EventuallyEq, eventually_nhds_iff]
  exact ⟨{ x | x < 0 }, fun x hx => (sign_neg hx).symm, isOpen_gt' 0, h⟩

end PartialOrder

section LinearOrder

variable [LinearOrder α] [OrderTopology α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b27179d12e524ca90a365a6a3c8c28ce055b918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
