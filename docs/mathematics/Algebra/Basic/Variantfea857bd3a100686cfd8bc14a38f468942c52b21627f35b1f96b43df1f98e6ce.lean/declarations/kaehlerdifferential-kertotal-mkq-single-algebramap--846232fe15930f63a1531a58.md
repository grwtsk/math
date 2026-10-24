# KaehlerDifferential.kerTotal_mkQ_single_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4861ef74136948550d0ab4656c7b667851555876",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 531,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61b09851-eab9-e40f-0ad6-af047974ab9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05a07044-94f6-2734-8be7-b893bf800bd5",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.kerTotal_mkQ_single_algebraMap",
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
  "slug": "kaehlerdifferential-kertotal-mkq-single-algebramap--846232fe15930f63a1531a58",
  "source": {
    "blob": "4861ef74136948550d0ab4656c7b667851555876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 531,
    "path": "GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:846232fe15930f63a1531a588942ff70968c359c87983958bbe78dcd76877686",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05a07044-94f6-2734-8be7-b893bf800bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.kerTotal_mkQ_single_algebraMap (x y) : (y𝖣algebraMap R S x) = 0 := by
  rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, ← Finsupp.smul_single_one _ y]
  exact Submodule.smul_mem _ _ (Submodule.subset_span (Or.inr <| ⟨_, rfl⟩))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4861ef74136948550d0ab4656c7b667851555876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
