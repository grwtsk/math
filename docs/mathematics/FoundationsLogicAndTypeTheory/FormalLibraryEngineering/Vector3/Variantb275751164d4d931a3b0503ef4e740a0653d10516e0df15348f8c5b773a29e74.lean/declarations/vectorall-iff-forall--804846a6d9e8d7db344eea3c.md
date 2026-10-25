# vectorAll_iff_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5ae4a826f2b2087879e2b285ed7d9e3e5af237b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b275751164d4d931a3b0503ef4e740a0653d10516e0df15348f8c5b773a29e74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:497b13e8-ec83-01ff-b5b8-84af511b79af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:beb65e18-48aa-e731-84bd-0fc9e4745c9c",
  "kind": "theorem",
  "lexical_name": "vectorAll_iff_forall",
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
  "slug": "vectorall-iff-forall--804846a6d9e8d7db344eea3c",
  "source": {
    "blob": "a5ae4a826f2b2087879e2b285ed7d9e3e5af237b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variantb275751164d4d931a3b0503ef4e740a0653d10516e0df15348f8c5b773a29e74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:804846a6d9e8d7db344eea3cccac27cb02fc5ed010037a6634318082279087f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variantb275751164d4d931a3b0503ef4e740a0653d10516e0df15348f8c5b773a29e74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beb65e18-48aa-e731-84bd-0fc9e4745c9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vectorAll_iff_forall : ∀ {n} (f : Vector3 α n → Prop), VectorAll n f ↔ ∀ v, f v
  | 0, _ => ⟨fun f0 v => v.nilElim f0, fun al => al []⟩
  | succ _, f =>
    (forall_congr' fun x => vectorAll_iff_forall fun v => f (x :: v)).trans
      ⟨fun al v => v.consElim al, fun al x v => al (x :: v)⟩

/-- `VectorAllP p v` is equivalent to `∀ i, p (v i)`, but unfolds directly to a conjunction,
  i.e. `VectorAllP p [0, 1, 2] = p 0 ∧ p 1 ∧ p 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variantb275751164d4d931a3b0503ef4e740a0653d10516e0df15348f8c5b773a29e74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variantb275751164d4d931a3b0503ef4e740a0653d10516e0df15348f8c5b773a29e74.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5ae4a826f2b2087879e2b285ed7d9e3e5af237b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
