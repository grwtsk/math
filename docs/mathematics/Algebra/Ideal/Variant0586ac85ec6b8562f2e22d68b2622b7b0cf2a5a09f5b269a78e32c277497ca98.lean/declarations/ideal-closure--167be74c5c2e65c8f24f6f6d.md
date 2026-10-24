# Ideal.closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25dfcf6974c207e9cb063d400dab12af58dd242bf3b0b64cdbdc777c06b88db6",
  "kind": "def",
  "lexical_name": "Ideal.closure",
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
  "slug": "ideal-closure--167be74c5c2e65c8f24f6f6d",
  "source": {
    "blob": "59633ac08fded8d9f21b5ad2e9bd8e918b876c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 25,
    "path": "GRWTSK/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:167be74c5c2e65c8f24f6f6d9361dc655b91f2c67871b6a40b4eaf947387889f",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25dfcf6974c207e9cb063d400dab12af58dd242bf3b0b64cdbdc777c06b88db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Ideal.closure (I : Ideal R) : Ideal R :=
  {
    AddSubmonoid.topologicalClosure
      I.toAddSubmonoid with
    carrier := closure I
    smul_mem' := fun c _ hx => map_mem_closure (mulLeft_continuous _) hx fun _ => I.mul_mem_left c }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant0586ac85ec6b8562f2e22d68b2622b7b0cf2a5a09f5b269a78e32c277497ca98.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59633ac08fded8d9f21b5ad2e9bd8e918b876c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
