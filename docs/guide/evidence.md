# Evidence and proof acceptance

[Technical guides](README.md) · [Documentation index](../index.md)

Formal statements, mathematical arguments, finite computations, Lean
elaboration, kernel replay, axiom audits, publication, and independent
mathematical review are different objects.

| Evidence | Does not automatically imply |
| --- | --- |
| A source statement | Truth of the statement |
| A conditional theorem | Truth of its premises |
| A finite calculation | An unbounded or cofinal theorem |
| Successful elaboration | External-source equivalence or novelty |
| A Git commit | A Lean build or proof acceptance |
| A static verification target | Completed verification |

Compare the actual source, hypotheses, quantifiers, domains, signs,
support limits and strongest known obstructions. Preserve negative
examples and unresolved transfer steps rather than promoting a model
to a theorem. Record unperformed checks as `NOT_RUN`, not as success.

The source provider, the authorized user, the implementer, the publisher
and the independent verifier need not coincide. Attribution alone
does not grant authority. See [repository policy](../../AGENTS.md).
