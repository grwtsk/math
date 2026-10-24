# BitPerm.ofBijective_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e2df824c903e7685d8f6df66526da567889a880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86f1ef03-4457-2c1a-38ac-505510571b07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:081944b7-38a7-46ca-a25c-e284c5252217",
  "kind": "theorem",
  "lexical_name": "BitPerm.ofBijective_apply",
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
  "slug": "bitperm-ofbijective-apply--35124f23dc9e3598f2f63f24",
  "source": {
    "blob": "7e2df824c903e7685d8f6df66526da567889a880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35124f23dc9e3598f2f63f247e8656b4fc8b53afe58746e841357c03a5dc69c8",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:081944b7-38a7-46ca-a25c-e284c5252217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BitPerm.ofBijective_apply {n : Nat}
    (H : Bits n → Bits n)
    (hH : Function.Bijective H)
    (x : Bits n) :
    BitPerm.ofBijective H hH x = H x :=
  rfl

/-! ## An explicit XOR group

`Bits n` remains the project's plain function type.  The distinct wrapper
below supplies the group structure needed for translations without installing
global algebraic instances on `Bits n` itself.
-/

/-- Bit vectors regarded as the elementary abelian XOR group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2df824c903e7685d8f6df66526da567889a880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
