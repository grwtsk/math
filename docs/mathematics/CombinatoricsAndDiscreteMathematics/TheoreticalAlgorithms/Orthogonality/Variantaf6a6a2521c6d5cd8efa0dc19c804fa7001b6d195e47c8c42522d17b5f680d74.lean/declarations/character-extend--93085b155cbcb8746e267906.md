# character_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20e73b48-e1ca-1192-f245-895f02f402f9",
  "kind": "theorem",
  "lexical_name": "character_extend",
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
  "slug": "character-extend--93085b155cbcb8746e267906",
  "source": {
    "blob": "a0807a6172d565ade335ad0307ef377cdfbb231e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93085b155cbcb8746e267906ea06984f71ea4f40c76903815ef27dbc32b11e97",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20e73b48-e1ca-1192-f245-895f02f402f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem character_extend {n : Nat}
    (S : WalshFourier.Frequency (n + 1))
    (x : Hypercube.Point n)
    (b : Bool) :
    WalshFourier.character S (Hypercube.extend x b) =
      WalshFourier.character (Hypercube.dropLast S) x *
        match Hypercube.last S with
        | true => Hypercube.spinOfBool b
        | false => 1 := by
  change
    (Fourier.character (Hypercube.dropLast S)
        (Hypercube.dropLast (Hypercube.extend x b)) *
      (match Hypercube.last S with
      | true =>
          Hypercube.spinOfBool
            (Hypercube.last (Hypercube.extend x b))
      | false => 1)) =
    (Fourier.character (Hypercube.dropLast S) x *
      (match Hypercube.last S with
      | true => Hypercube.spinOfBool b
      | false => 1))
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0807a6172d565ade335ad0307ef377cdfbb231e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
