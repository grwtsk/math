# swap_smul_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63effb64e5756778ad7e0b30c766ab2b79cb2f47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0f63add-87ff-036e-cd6d-05913fa63172",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7a494dc-e99e-a64d-c6c6-9aaa501adcab",
  "kind": "theorem",
  "lexical_name": "swap_smul_involutive",
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
  "slug": "swap-smul-involutive--16e90d552324fa658f0d806f",
  "source": {
    "blob": "63effb64e5756778ad7e0b30c766ab2b79cb2f47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16e90d552324fa658f0d806f1aa0dd2fa18549ce9ef18765a8ae973e727be974",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7a494dc-e99e-a64d-c6c6-9aaa501adcab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem swap_smul_involutive [MulAction (Perm α) β] (i j : α) :
    Function.Involutive (swap i j • · : β → β) := swap_smul_self_smul i j

end Swap
end Equiv

open Equiv

namespace Set
variable {α : Type*} {f : Perm α} {s : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63effb64e5756778ad7e0b30c766ab2b79cb2f47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
