# fourthLowerCorrection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:100419aa8fd5d7ed1d32e9cb1cd4aed6f9dc433b38ccbdc81a85a470d2ef214f",
  "kind": "def",
  "lexical_name": "fourthLowerCorrection",
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
  "slug": "fourthlowercorrection--d039d1f01445f75567394b76",
  "source": {
    "blob": "22927ac6394b40e2555b84edddb743a9af80b540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 531,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d039d1f01445f75567394b7650a07417b7be4b2e46f09ad7090373fd121fbc05",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:100419aa8fd5d7ed1d32e9cb1cd4aed6f9dc433b38ccbdc81a85a470d2ef214f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fourthLowerCorrection
    (κ : DirectionCumulantFamily E R)
    (d : Fin 4 → E) : R :=
  κ 3 ![d 0, d 1, d 2] * κ 1 (fun _ : Fin 1 => d 3) +
  κ 3 ![d 0, d 1, d 3] * κ 1 (fun _ : Fin 1 => d 2) +
  κ 3 ![d 0, d 2, d 3] * κ 1 (fun _ : Fin 1 => d 1) +
  κ 3 ![d 1, d 2, d 3] * κ 1 (fun _ : Fin 1 => d 0) +
  κ 2 ![d 0, d 1] * κ 2 ![d 2, d 3] +
  κ 2 ![d 0, d 2] * κ 2 ![d 1, d 3] +
  κ 2 ![d 0, d 3] * κ 2 ![d 1, d 2] +
  κ 2 ![d 0, d 1] * κ 1 (fun _ : Fin 1 => d 2) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 0, d 2] * κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 0, d 3] * κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 2) +
  κ 2 ![d 1, d 2] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 1, d 3] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 2) +
  κ 2 ![d 2, d 3] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 1) +
  κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 2) *
    κ 1 (fun _ : Fin 1 => d 3)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22927ac6394b40e2555b84edddb743a9af80b540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
