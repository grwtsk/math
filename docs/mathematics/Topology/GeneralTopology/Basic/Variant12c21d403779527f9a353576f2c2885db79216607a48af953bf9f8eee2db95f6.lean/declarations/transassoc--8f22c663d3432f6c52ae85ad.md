# transAssoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b9d120d07bf9d62d654c968c0d193162196d1dd2ea67acbc2f0faf0a2f0b93f",
  "kind": "def",
  "lexical_name": "transAssoc",
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
  "slug": "transassoc--8f22c663d3432f6c52ae85ad",
  "source": {
    "blob": "896790902782eb7544f66d2e058bd8df325f9cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f22c663d3432f6c52ae85adcc79ffc72320415f1a26cb23fc10b31c36a7bdbe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b9d120d07bf9d62d654c968c0d193162196d1dd2ea67acbc2f0faf0a2f0b93f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transAssoc {x₀ x₁ x₂ x₃ : X} (p : Path x₀ x₁) (q : Path x₁ x₂) (r : Path x₂ x₃) :
    Homotopy ((p.trans q).trans r) (p.trans (q.trans r)) :=
  ((Homotopy.reparam (p.trans (q.trans r))
          (fun t => ⟨transAssocReparamAux t, transAssocReparamAux_mem_I t⟩) (by continuity)
          (Subtype.ext transAssocReparamAux_zero) (Subtype.ext transAssocReparamAux_one)).cast
      rfl (trans_assoc_reparam p q r).symm).symm
#align path.homotopy.trans_assoc Path.Homotopy.transAssoc

end Assoc

end Homotopy

end Path

/-- The fundamental groupoid of a space `X` is defined to be a type synonym for `X`, and we
subsequently put a `CategoryTheory.Groupoid` structure on it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `896790902782eb7544f66d2e058bd8df325f9cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
