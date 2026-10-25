# sigmaStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acda7964bcf4f4d4607bd769cb8fb257ab2eca448198afe0a5aa85589e947f45",
  "kind": "def",
  "lexical_name": "sigmaStructure",
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
  "slug": "sigmastructure--3f54f44fbdc975361646962c",
  "source": {
    "blob": "7b50ab0f3ee9643076321f1ca8698fdd722f902e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f54f44fbdc975361646962c486a3593a7b5703a550c7314c9a5f3c202465825",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acda7964bcf4f4d4607bd769cb8fb257ab2eca448198afe0a5aa85589e947f45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sigmaStructure [IsDirected ι (· ≤ ·)] [Nonempty ι] : L.Structure (Σˣ f) where
  funMap F x :=
    ⟨_,
      funMap F
        (unify f x (Classical.choose (Fintype.bddAbove_range fun a => (x a).1))
          (Classical.choose_spec (Fintype.bddAbove_range fun a => (x a).1)))⟩
  RelMap R x :=
    RelMap R
      (unify f x (Classical.choose (Fintype.bddAbove_range fun a => (x a).1))
        (Classical.choose_spec (Fintype.bddAbove_range fun a => (x a).1)))
#align first_order.language.direct_limit.sigma_structure FirstOrder.Language.DirectLimit.sigmaStructure

end DirectLimit

/-- The direct limit of a directed system is the structures glued together along the embeddings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b50ab0f3ee9643076321f1ca8698fdd722f902e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
