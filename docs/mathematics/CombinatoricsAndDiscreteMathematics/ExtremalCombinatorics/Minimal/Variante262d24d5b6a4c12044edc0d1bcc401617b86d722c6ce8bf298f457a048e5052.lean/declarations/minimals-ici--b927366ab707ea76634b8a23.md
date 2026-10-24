# minimals_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ef5388-a438-a1e1-2937-e8928b6a9c48",
  "kind": "theorem",
  "lexical_name": "minimals_Ici",
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
  "slug": "minimals-ici--b927366ab707ea76634b8a23",
  "source": {
    "blob": "3a60d6515fb184bb2f9511fa95480bf444b85246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b927366ab707ea76634b8a23b343362aedbfca8924fee30dde1b79c0f909569a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ef5388-a438-a1e1-2937-e8928b6a9c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem minimals_Ici (a : α) : minimals (· ≤ ·) (Ici a) = {a} :=
  maximals_Iic (α := αᵒᵈ) a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a60d6515fb184bb2f9511fa95480bf444b85246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
