# commutes_complexWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89463e55-31e4-3e8d-49eb-f6d147db12de",
  "kind": "theorem",
  "lexical_name": "commutes_complexWord",
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
  "slug": "commutes-complexword--4e9968fe8849a5c6be2dd4b2",
  "source": {
    "blob": "cef7a890716a02491d2a0fe64e67e41fa2024cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Farey/GroupSpectralChannel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e9968fe8849a5c6be2dd4b2d15b18b449cdfc9cfec211c550bd8b6122b92e51",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/GroupSpectralChannel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89463e55-31e4-3e8d-49eb-f6d147db12de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutes_complexWord (P : MatC)
    (hL : P * (leftShear : MatC) = (leftShear : MatC) * P)
    (hR : P * (rightShear : MatC) = (rightShear : MatC) * P)
    (w : List Turn) :
    P * complexWord w = complexWord w * P := by
  induction w with
  | nil => simp [complexWord]
  | cons t ts ih =>
      have ht : P * (turnShear t : MatC) =
          (turnShear t : MatC) * P := by
        cases t with
        | left => simpa [turnShear] using hL
        | right => simpa [turnShear] using hR
      change P * ((turnShear t : MatC) * complexWord ts) =
        ((turnShear t : MatC) * complexWord ts) * P
      calc
        P * ((turnShear t : MatC) * complexWord ts) =
            (P * turnShear t) * complexWord ts := (Matrix.mul_assoc _ _ _).symm
        _ = (turnShear t * P) * complexWord ts := by rw [ht]
        _ = turnShear t * (P * complexWord ts) := Matrix.mul_assoc _ _ _
        _ = turnShear t * (complexWord ts * P) := by rw [ih]
        _ = ((turnShear t : MatC) * complexWord ts) * P :=
          (Matrix.mul_assoc _ _ _).symm

/-- Exact centralizer obstruction for the actual opposed Farey shears. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/GroupSpectralChannel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/GroupSpectralChannel.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef7a890716a02491d2a0fe64e67e41fa2024cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
