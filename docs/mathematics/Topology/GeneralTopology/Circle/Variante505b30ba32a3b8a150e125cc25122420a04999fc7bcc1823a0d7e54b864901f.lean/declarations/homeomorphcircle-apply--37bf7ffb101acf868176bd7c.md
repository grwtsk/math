# homeomorphCircle_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa3fd762-32a0-2159-9e08-e2fddcf496a4",
  "kind": "theorem",
  "lexical_name": "homeomorphCircle_apply",
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
  "slug": "homeomorphcircle-apply--37bf7ffb101acf868176bd7c",
  "source": {
    "blob": "59f493bb9b16c39389a4084a9899b8490675f38c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 446,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37bf7ffb101acf868176bd7caabbe05c88ac55ef87d9a6e3e82d329a2147ff29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa3fd762-32a0-2159-9e08-e2fddcf496a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homeomorphCircle_apply (hT : T ≠ 0) (x : AddCircle T) :
    homeomorphCircle hT x = toCircle x := by
  cases x using QuotientAddGroup.induction_on
  rw [homeomorphCircle, Homeomorph.trans_apply,
    homeomorphAddCircle_apply_mk, homeomorphCircle'_apply_mk, toCircle_apply_mk]
  ring_nf

end AddCircle

open AddCircle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variante505b30ba32a3b8a150e125cc25122420a04999fc7bcc1823a0d7e54b864901f.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f493bb9b16c39389a4084a9899b8490675f38c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
