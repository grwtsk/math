# vandermonde_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93d7a0d0453c8bd268025ec25a2390ec96a36091",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a38be6a5-0397-57d6-cd33-95f7121911e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33490538-2592-37d6-55af-5452ebbecf26",
  "kind": "theorem",
  "lexical_name": "vandermonde_cons",
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
  "slug": "vandermonde-cons--7cc1f0d1568a87890e46b6e5",
  "source": {
    "blob": "93d7a0d0453c8bd268025ec25a2390ec96a36091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc1f0d1568a87890e46b6e5d9a2669315bafbb936d196c29c7b11fd74fb93e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33490538-2592-37d6-55af-5452ebbecf26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vandermonde_cons (v0 : R) (v : Fin n → R) :
    vandermonde (Fin.cons v0 v : Fin n.succ → R) =
      Fin.cons (fun (j : Fin n.succ) => v0 ^ (j : ℕ)) fun i => Fin.cons 1
      fun j => v i * vandermonde v i j := by
  ext i j
  refine Fin.cases (by simp) (fun i => ?_) i
  refine Fin.cases (by simp) (fun j => ?_) j
  simp [pow_succ']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d7a0d0453c8bd268025ec25a2390ec96a36091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
