# Beta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8c7d46d0ad428dd27869eb0322a3e7184fb1b306c01c1cce82d78552a68e86f",
  "kind": "inductive",
  "lexical_name": "Beta",
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
  "slug": "beta--9244f0f46bcacbba57cf8916",
  "source": {
    "blob": "14fe35f37bf596d3b4d0946cb79ea1ba760434f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9244f0f46bcacbba57cf8916d3995d2e44f432b48a427c12efd2053db59f7b49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8c7d46d0ad428dd27869eb0322a3e7184fb1b306c01c1cce82d78552a68e86f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Beta {S : Type u} : Expr S → Expr S → Prop
  | head (A b a) : Beta (.app (.lam A b) a) (b.instantiate a)
  | app_left {f f' a} : Beta f f' → Beta (.app f a) (.app f' a)
  | app_right {f a a'} : Beta a a' → Beta (.app f a) (.app f a')
  | lam_domain {A A' b} : Beta A A' → Beta (.lam A b) (.lam A' b)
  | lam_body {A b b'} : Beta b b' → Beta (.lam A b) (.lam A b')
  | pi_domain {A A' B} : Beta A A' → Beta (.pi A B) (.pi A' B)
  | pi_body {A B B'} : Beta B B' → Beta (.pi A B) (.pi A B')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant43076a70bc62b116bacb0415ff2e5dee4e857936d7e03fc1fa89be971ce64417.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14fe35f37bf596d3b4d0946cb79ea1ba760434f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
