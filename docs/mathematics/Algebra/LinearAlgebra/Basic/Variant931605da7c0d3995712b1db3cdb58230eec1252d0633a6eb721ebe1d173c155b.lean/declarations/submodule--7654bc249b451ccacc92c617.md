# submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6df9989bc2231c2364a820391d80464d6f8639de3e0ed9abad5261374cfe59ed",
  "kind": "def",
  "lexical_name": "submodule",
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
  "slug": "submodule--7654bc249b451ccacc92c617",
  "source": {
    "blob": "a9ee878fdebb52641d1b7a391620b24a3b6b192f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7654bc249b451ccacc92c61708f45466f7490d85e618ddca1a86445a8b3cb2b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6df9989bc2231c2364a820391d80464d6f8639de3e0ed9abad5261374cfe59ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def submodule (v : ℙ K V) : Submodule K V :=
  (Quotient.liftOn' v fun v => K ∙ (v : V)) <| by
    rintro ⟨a, ha⟩ ⟨b, hb⟩ ⟨x, rfl : x • b = a⟩
    exact Submodule.span_singleton_group_smul_eq _ x _
#align projectivization.submodule Projectivization.submodule

variable (K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ee878fdebb52641d1b7a391620b24a3b6b192f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
