# iSup_iInf_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66181c2c4e89516214a5c8ad7d67cb6b6ae1d2c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df1c0857-67dc-2b16-e95f-d706324b47ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c8ce8ea-2aab-7aa4-c22a-2b2695e7a5a3",
  "kind": "theorem",
  "lexical_name": "iSup_iInf_of_monotone",
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
  "slug": "isup-iinf-of-monotone--483fd591c01e1180721a051b",
  "source": {
    "blob": "66181c2c4e89516214a5c8ad7d67cb6b6ae1d2c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1507,
    "line": 1502,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483fd591c01e1180721a051b4120da18eed1a2fe2619fe7891e701947d2afb79",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c8ce8ea-2aab-7aa4-c22a-2b2695e7a5a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1502–1507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_iInf_of_monotone {ι ι' α : Type*} [Finite ι] [Preorder ι'] [Nonempty ι']
    [IsDirected ι' (· ≤ ·)] [Order.Frame α] {f : ι → ι' → α} (hf : ∀ i, Monotone (f i)) :
    ⨆ j, ⨅ i, f i j = ⨅ i, ⨆ j, f i j := by
  simpa only [iInf_univ] using finite_univ.iSup_biInf_of_monotone fun i _ => hf i
#align supr_infi_of_monotone Set.iSup_iInf_of_monotone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante3dea796a40996218ab14319d0185dcdf808e8e49c29d353de749bfd54dcddbb.lean#L1502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66181c2c4e89516214a5c8ad7d67cb6b6ae1d2c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
