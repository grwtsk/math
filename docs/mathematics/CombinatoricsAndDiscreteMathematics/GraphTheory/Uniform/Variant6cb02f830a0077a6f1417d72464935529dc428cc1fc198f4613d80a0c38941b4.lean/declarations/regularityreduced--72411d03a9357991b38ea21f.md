# regularityReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81b5e6a8720ea439c8a8eb54b12b1e6ce421216eecb03b2772cfcab88b9c1017",
  "kind": "def",
  "lexical_name": "regularityReduced",
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
  "slug": "regularityreduced--72411d03a9357991b38ea21f",
  "source": {
    "blob": "1ea99a3dd6edf4e87dcd9010dc7bf9c3a09f16dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 397,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72411d03a9357991b38ea21f3f438a4f9a68f246745104c754ad5f120292a98c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81b5e6a8720ea439c8a8eb54b12b1e6ce421216eecb03b2772cfcab88b9c1017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def regularityReduced (ε δ : 𝕜) : SimpleGraph α where
  Adj a b := G.Adj a b ∧
    ∃ U ∈ P.parts, ∃ V ∈ P.parts, a ∈ U ∧ b ∈ V ∧ U ≠ V ∧ G.IsUniform ε U V ∧ δ ≤ G.edgeDensity U V
  symm.symm a b := by
    rintro ⟨ab, U, UP, V, VP, xU, yV, UV, GUV, εUV⟩
    refine ⟨ab.symm, V, VP, U, UP, yV, xU, UV.symm, GUV.symm, ?_⟩
    rwa [edgeDensity_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea99a3dd6edf4e87dcd9010dc7bf9c3a09f16dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
