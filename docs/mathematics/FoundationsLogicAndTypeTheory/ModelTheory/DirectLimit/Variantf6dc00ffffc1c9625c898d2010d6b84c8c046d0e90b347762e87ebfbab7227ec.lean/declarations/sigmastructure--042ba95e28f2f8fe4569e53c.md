# sigmaStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70eb5800a570a5220ec632b31f3f90675b11c075a9d382781f985c3351f9d8be",
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
  "slug": "sigmastructure--042ba95e28f2f8fe4569e53c",
  "source": {
    "blob": "ea5cede3e3a7cb45e1b97c0e887e0220ccf42fd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:042ba95e28f2f8fe4569e53c89f2eef5703c2402a0f280293107a36b7d4bfbbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70eb5800a570a5220ec632b31f3f90675b11c075a9d382781f985c3351f9d8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5cede3e3a7cb45e1b97c0e887e0220ccf42fd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
