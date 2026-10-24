# cubeBitSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fc0e22ff18e1935ccbbb6ccc4538c678807adab64dbc931d85b1ced57e5c683",
  "kind": "def",
  "lexical_name": "cubeBitSlice",
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
  "slug": "cubebitslice--a13f81c142d8705a033566fe",
  "source": {
    "blob": "fefe1b5df388d1413398adc629f6cda8e373c715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DualVC/Variant7348a3f182128be9a1c038c5d7f27a11817f6fea6f4f59600241720266cb6065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a13f81c142d8705a033566fe9aab8d1185f17b0a406ed573ec54d2bed8f68a34",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DualVC/Variant7348a3f182128be9a1c038c5d7f27a11817f6fea6f4f59600241720266cb6065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fc0e22ff18e1935ccbbb6ccc4538c678807adab64dbc931d85b1ced57e5c683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def cubeBitSlice {n : ℕ} {S : Finset (Finset α)} (cube : (Fin n → Bool) ↪ ↥S)
    (k : Fin n) : Finset (Finset α) :=
  ((Finset.univ : Finset (Fin n → Bool)).filter fun b ↦ b k = true).image
    fun b ↦ (cube b).val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DualVC/Variant7348a3f182128be9a1c038c5d7f27a11817f6fea6f4f59600241720266cb6065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DualVC/Variant7348a3f182128be9a1c038c5d7f27a11817f6fea6f4f59600241720266cb6065.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fefe1b5df388d1413398adc629f6cda8e373c715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
