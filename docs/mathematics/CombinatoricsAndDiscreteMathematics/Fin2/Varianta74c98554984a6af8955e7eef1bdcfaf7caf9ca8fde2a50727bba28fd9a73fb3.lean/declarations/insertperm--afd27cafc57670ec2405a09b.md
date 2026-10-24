# insertPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92cfb99e41ffc92f95c3a06e7f0bfb75e8d5798c0d15f9c3fdadce6c33e1f18e",
  "kind": "def",
  "lexical_name": "insertPerm",
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
  "slug": "insertperm--afd27cafc57670ec2405a09b",
  "source": {
    "blob": "1e0b161934d8b5d57b1e13ee6b9d269d7d4e7f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afd27cafc57670ec2405a09bf4e31687d324415da3b14ac0f9447b034a65a0e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92cfb99e41ffc92f95c3a06e7f0bfb75e8d5798c0d15f9c3fdadce6c33e1f18e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def insertPerm : ∀ {n}, Fin2 n → Fin2 n → Fin2 n
  | _, @fz _, @fz _ => fz
  | _, @fz _, @fs _ j => fs j
  | _, @fs (succ _) _, @fz _ => fs fz
  | _, @fs (succ _) i, @fs _ j =>
    match insertPerm i j with
    | fz => fz
    | fs k => fs (fs k)

/-- `remapLeft f k : Fin2 (m + k) → Fin2 (n + k)` applies the function
  `f : Fin2 m → Fin2 n` to inputs less than `m`, and leaves the right part
  on the right (that is, `remapLeft f k (m + i) = n + i`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e0b161934d8b5d57b1e13ee6b9d269d7d4e7f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
